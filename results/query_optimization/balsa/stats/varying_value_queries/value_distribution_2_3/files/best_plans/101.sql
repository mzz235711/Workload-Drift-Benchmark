/*+ MergeJoin(b v u p)
 MergeJoin(v u p)
 NestLoop(u p)
 IndexScan(b)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-16 AND p.Score<184 AND p.CommentCount>2 AND p.CommentCount<30 AND u.DownVotes>430 AND u.DownVotes<1901 AND v.CreationDate>'2010-05-07 03:02:58'::timestamp AND v.CreationDate<'2011-10-23 03:02:13'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<15 AND b.Date>'2013-07-09 20:37:47'::timestamp AND b.Date<'2013-08-23 01:42:35'::timestamp;

