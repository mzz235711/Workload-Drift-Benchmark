/*+ HashJoin(ph p u)
 HashJoin(p u)
 SeqScan(ph)
 SeqScan(p)
 IndexScan(u)
 Leading((ph (p u))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND ph.PostHistoryTypeId=2 AND ph.CreationDate>='2010-12-12 14:10:55'::timestamp AND ph.CreationDate<='2014-09-09 20:12:41'::timestamp AND p.PostTypeId=1 AND p.AnswerCount=2 AND p.CommentCount<=14 AND u.Reputation<=144 AND u.DownVotes<=2 AND u.UpVotes>=0;

