/*+ HashJoin(ph p u)
 HashJoin(p u)
 SeqScan(ph)
 SeqScan(p)
 IndexScan(u)
 Leading((ph (p u))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND p.Score>=-4 AND p.AnswerCount>=0 AND p.CreationDate>='2010-08-20 15:35:33'::timestamp AND p.CreationDate<='2014-08-28 13:18:09'::timestamp AND u.Reputation<=172 AND u.Views>=0 AND u.UpVotes>=0;

