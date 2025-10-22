/*+ HashJoin(ph u p)
 HashJoin(ph u)
 SeqScan(ph)
 SeqScan(u)
 IndexScan(p)
 Leading(((ph u) p)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND p.AnswerCount<=4 AND p.CommentCount>=0 AND u.UpVotes>=0 AND u.CreationDate>='2010-11-04 15:56:37'::timestamp;

