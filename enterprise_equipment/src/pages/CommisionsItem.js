import React, { useState } from "react";
import PopupMenu from "../components/PopupMenu";
import MemberForm from "../components/MemberForm";
import "../styles/CommisionsItem.css";

const CommisionsItem = ({
  commission,
  onMemberAdd,
  onMemberEdit,
  onMemberDelete,
  fetchDataMethod,
}) => {
  const [selectedMember, setSelectedMember] = useState(null);
  const [isAddMemberPopupOpen, setIsAddMemberPopupOpen] = useState(false);
  const [isEditMemberPopupOpen, setIsEditMemberPopupOpen] = useState(false);

  const handleMemberDetailsClick = (member) => {
    setSelectedMember(member);
  };

  const handleAddMemberClick = () => {
    setIsAddMemberPopupOpen(true);
  };

  const handleEditMemberClick = async (member) => {
    setSelectedMember(member);
    setIsEditMemberPopupOpen(true);
  };

  const handleDeleteMemberClick = async (member) => {
    const response = await fetch(
      `http://localhost:5000/commission-members/${member.id}`,
      {
        method: "DELETE",
      }
    );
    onMemberDelete(commission.id, member.id);
    setSelectedMember(null);
  };

  const handleMemberFormSubmit = async (updatedMember) => {
    if (selectedMember) {
      const response = await fetch(
        `http://localhost:5000/commission-members/${selectedMember.id}`,
        {
          method: "PUT",
          headers: {
            "Content-Type": "application/json",
          },
          body: JSON.stringify(updatedMember),
        }
      );
      onMemberEdit(commission.id, selectedMember.id, updatedMember);
      setIsEditMemberPopupOpen(false);
    } else {
      const response = await fetch("http://127.0.0.1:5000/commission-members", {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify({ updatedMember, CommissionId: commission.id }),
      });
      console.log(updatedMember);
      if (!response.ok) {
        throw new Error("Failed to add employee");
      }
      onMemberAdd(commission.id, updatedMember);
      setIsAddMemberPopupOpen(false);
    }

    setSelectedMember(null);
  };

  const handleAddMemberPopupClose = () => {
    setIsAddMemberPopupOpen(false);
  };

  const handleEditMemberPopupClose = () => {
    setIsEditMemberPopupOpen(false);
  };

  return (
    <div className="commission-item">
      <h4 className="commission-name">{commission.name}</h4>
      <ul className="members-list">
        {commission.members && commission.members.length > 0 ? (
          commission.members.map((member) => (
            <li key={member.id} className="member-item">
              <img
                className="member-img"
                src={member.img}
                alt={`${member.name} ${member.surname} Image`}
              />
              <p>{`${member.name} ${member.surname}`}</p>
              <PopupMenu
                item={<button className="details-button">Подробнее</button>}
                popupContent={
                  <div>
                    <img
                      className="member-img-popup"
                      src={member.img}
                      alt={`${member.name} ${member.surname} Image`}
                    />
                    <h4>{`${member.name} ${member.surname}`}</h4>
                    <p>Телефон: {member.phone}</p>
                    <p>Опыт: {member.experience}</p>
                    <button onClick={() => handleEditMemberClick(member)}>
                      Редактировать
                    </button>
                    <button onClick={() => handleDeleteMemberClick(member)}>
                      Удалить
                    </button>
                  </div>
                }
                onOpen={() => handleMemberDetailsClick(member)}
              />
            </li>
          ))
        ) : (
          <p>No members available</p>
        )}
      </ul>
      <button onClick={handleAddMemberClick}>Добавить участника</button>
      {isAddMemberPopupOpen && (
        <MemberForm
          onSubmit={handleMemberFormSubmit}
          onCancel={handleAddMemberPopupClose}
        />
      )}
      {isEditMemberPopupOpen && (
        <MemberForm
          member={selectedMember}
          onSubmit={handleMemberFormSubmit}
          onCancel={handleEditMemberPopupClose}
        />
      )}
    </div>
  );
};

export default CommisionsItem;
