/*+ MergeJoin(u p pl)
 HashJoin(p pl)
 IndexScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((u (p pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.AnswerCount<=4 AND p.CreationDate>='2010-07-19 19:22:31'::timestamp AND u.Views>=0 AND u.DownVotes>=0 AND u.DownVotes<=6 AND u.UpVotes>=0 AND u.UpVotes<=10 AND u.CreationDate>='2010-07-27 19:48:56'::timestamp AND u.CreationDate<='2014-09-04 12:41:59'::timestamp;

