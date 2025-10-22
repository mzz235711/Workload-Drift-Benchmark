/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>94 AND p.Score<187 AND p.CommentCount>4 AND p.CommentCount<41 AND u.DownVotes>111 AND u.DownVotes<222 AND v.CreationDate>'2012-11-30 12:27:50'::timestamp AND v.CreationDate<'2013-10-18 23:59:42'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<15 AND b.Date>'2012-02-03 02:20:03'::timestamp AND b.Date<'2014-03-22 07:26:15'::timestamp;

