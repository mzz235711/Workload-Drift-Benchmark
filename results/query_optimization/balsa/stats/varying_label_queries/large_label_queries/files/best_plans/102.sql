/*+ HashJoin(p ph u)
 MergeJoin(ph u)
 SeqScan(p)
 SeqScan(ph)
 SeqScan(u)
 Leading((p (ph u))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND ph.PostHistoryTypeId=3 AND ph.CreationDate>='2010-10-01 23:13:10'::timestamp AND ph.CreationDate<='2014-08-29 23:26:20'::timestamp AND p.AnswerCount<=4 AND p.CreationDate>='2010-07-27 18:14:44'::timestamp AND u.Reputation>=1 AND u.Reputation<=8236 AND u.CreationDate>='2010-07-24 20:31:14'::timestamp;

