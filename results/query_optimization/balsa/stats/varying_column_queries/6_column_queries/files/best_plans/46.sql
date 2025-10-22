/*+ HashJoin(ph p u b)
 MergeJoin(ph p u)
 MergeJoin(p u)
 SeqScan(ph)
 IndexScan(p)
 IndexScan(u)
 SeqScan(b)
 Leading(((ph (p u)) b)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND ph.PostHistoryTypeId=2 AND ph.CreationDate<='2014-09-09 18:00:05'::timestamp AND p.AnswerCount<=6 AND p.CreationDate>='2010-07-27 19:28:38'::timestamp AND p.CreationDate<='2014-09-12 13:52:50'::timestamp AND u.UpVotes>=0;

