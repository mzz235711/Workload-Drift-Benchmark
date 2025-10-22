/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-1 AND p.Score<75 AND p.CommentCount>1 AND p.CommentCount<24 AND u.DownVotes>134 AND u.DownVotes<238 AND v.CreationDate>'2009-12-31 13:58:41'::timestamp AND v.CreationDate<'2012-02-01 23:56:26'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<5 AND b.Date>'2012-03-12 07:24:41'::timestamp AND b.Date<'2014-05-08 05:47:31'::timestamp;

