/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-13 AND p.Score<138 AND p.CommentCount>17 AND p.CommentCount<30 AND u.DownVotes>102 AND u.DownVotes<1220 AND v.CreationDate>'2010-07-02 08:43:42'::timestamp AND v.CreationDate<'2012-02-02 12:03:14'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<15 AND b.Date>'2012-08-04 16:39:21'::timestamp AND b.Date<'2013-11-15 18:56:14'::timestamp;

