/*+ MergeJoin(b v u p)
 MergeJoin(v u p)
 NestLoop(u p)
 IndexScan(b)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-14 AND p.Score<100 AND p.CommentCount>2 AND p.CommentCount<18 AND u.DownVotes>19 AND u.DownVotes<1190 AND v.CreationDate>'2011-11-12 10:43:47'::timestamp AND v.CreationDate<'2013-01-21 00:13:46'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<10 AND b.Date>'2012-10-11 20:22:14'::timestamp AND b.Date<'2013-01-29 02:05:15'::timestamp;

