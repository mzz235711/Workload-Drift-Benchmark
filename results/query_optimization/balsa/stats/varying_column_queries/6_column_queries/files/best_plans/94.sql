/*+ HashJoin(u ph p)
 HashJoin(ph p)
 SeqScan(u)
 SeqScan(ph)
 SeqScan(p)
 Leading((u (ph p))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND ph.PostHistoryTypeId=13 AND ph.CreationDate>='2011-05-19 13:28:30'::timestamp AND ph.CreationDate<='2014-07-15 11:16:25'::timestamp AND p.AnswerCount>=0 AND p.CommentCount>=0 AND u.Views<=55;

