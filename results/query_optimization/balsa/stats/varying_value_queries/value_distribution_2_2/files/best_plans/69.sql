/*+ MergeJoin(b p v u)
 NestLoop(p v u)
 NestLoop(p v)
 IndexScan(b)
 SeqScan(p)
 IndexScan(v)
 IndexScan(u)
 Leading((b ((p v) u))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-7 AND p.Score<17 AND p.CommentCount>6 AND p.CommentCount<34 AND u.DownVotes>764 AND u.DownVotes<1815 AND v.CreationDate>'2010-06-15 23:15:53'::timestamp AND v.CreationDate<'2012-07-06 19:43:12'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<13 AND b.Date>'2010-09-08 06:25:31'::timestamp AND b.Date<'2014-06-27 17:01:17'::timestamp;

