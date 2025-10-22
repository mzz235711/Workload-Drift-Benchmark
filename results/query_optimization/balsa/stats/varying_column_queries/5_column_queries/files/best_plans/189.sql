/*+ HashJoin(ph v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(ph)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 Leading((ph (v (u p)))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, votes as v, users as u WHERE p.Id = ph.PostId AND u.Id = p.OwnerUserId AND p.Id = v.PostId AND ph.CreationDate>='2011-07-28 22:48:07'::timestamp AND p.PostTypeId=1 AND p.AnswerCount>=0 AND v.VoteTypeId=2 AND u.UpVotes>=0;

