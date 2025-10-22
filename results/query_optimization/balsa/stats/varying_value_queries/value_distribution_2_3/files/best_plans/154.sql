/*+ MergeJoin(b v u p)
 MergeJoin(v u p)
 NestLoop(u p)
 IndexScan(b)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-11 AND p.Score<28 AND p.CommentCount>2 AND p.CommentCount<36 AND u.DownVotes>664 AND u.DownVotes<848 AND v.CreationDate>'2013-02-01 22:16:00'::timestamp AND v.CreationDate<'2013-07-21 13:47:31'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<14 AND b.Date>'2010-08-31 08:39:58'::timestamp AND b.Date<'2012-10-27 05:06:32'::timestamp;

