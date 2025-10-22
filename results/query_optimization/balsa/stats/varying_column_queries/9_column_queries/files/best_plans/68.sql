/*+ HashJoin(ph p u b)
 HashJoin(ph p u)
 HashJoin(ph p)
 IndexScan(ph)
 IndexScan(p)
 SeqScan(u)
 SeqScan(b)
 Leading((((ph p) u) b)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND ph.PostHistoryTypeId=2 AND ph.CreationDate<='2014-09-05 01:20:31'::timestamp AND p.Score<=27 AND p.AnswerCount>=0 AND p.CreationDate>='2010-07-19 23:40:01'::timestamp AND p.CreationDate<='2014-09-12 16:54:29'::timestamp AND u.Reputation>=1 AND u.Reputation<=111 AND b.Date>='2010-07-20 05:19:09'::timestamp;

