/*+ HashJoin(ph p u)
 HashJoin(ph p)
 SeqScan(ph)
 IndexScan(p)
 IndexScan(u)
 Leading(((ph p) u)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND ph.PostHistoryTypeId=2 AND ph.CreationDate>='2010-10-08 17:12:27'::timestamp AND p.AnswerCount>=0 AND u.UpVotes=0;

