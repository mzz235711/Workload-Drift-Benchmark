/*+ HashJoin(ph u p)
 MergeJoin(u p)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(p)
 Leading((ph (u p))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND p.AnswerCount<=6 AND p.CommentCount<=10 AND p.CreationDate<='2014-09-03 15:42:42'::timestamp AND u.UpVotes=1;

