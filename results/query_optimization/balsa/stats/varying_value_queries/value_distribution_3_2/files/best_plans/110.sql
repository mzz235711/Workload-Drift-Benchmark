/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>92 AND p.Score<163 AND p.CommentCount>7 AND p.CommentCount<34 AND u.DownVotes>246 AND u.DownVotes<1175 AND v.CreationDate>'2009-05-27 09:13:33'::timestamp AND v.CreationDate<'2012-05-14 07:25:50'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<5 AND b.Date>'2010-09-06 07:07:15'::timestamp AND b.Date<'2013-05-31 09:57:18'::timestamp;

