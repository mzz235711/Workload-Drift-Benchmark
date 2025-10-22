/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>0 AND p.Score<19 AND p.CommentCount>3 AND p.CommentCount<16 AND u.DownVotes>281 AND u.DownVotes<1219 AND v.CreationDate>'2012-02-04 06:13:13'::timestamp AND v.CreationDate<'2012-12-06 07:36:46'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<10 AND b.Date>'2010-10-30 04:23:25'::timestamp AND b.Date<'2014-02-22 15:47:18'::timestamp;

