/*+ MergeJoin(ph p u b)
 HashJoin(ph p u)
 HashJoin(ph p)
 IndexScan(ph)
 IndexScan(p)
 SeqScan(u)
 SeqScan(b)
 Leading((((ph p) u) b)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND ph.PostHistoryTypeId=5 AND ph.CreationDate>='2010-09-15 02:15:32'::timestamp AND ph.CreationDate<='2014-06-24 13:53:34'::timestamp AND p.AnswerCount>=0 AND p.AnswerCount<=4 AND p.CommentCount>=0 AND p.CreationDate>='2010-08-06 03:47:26'::timestamp AND u.Reputation>=1 AND u.UpVotes<=21;

