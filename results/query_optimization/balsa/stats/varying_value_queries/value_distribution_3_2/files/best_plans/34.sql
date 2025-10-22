/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>21 AND p.Score<148 AND p.CommentCount>8 AND p.CommentCount<30 AND u.DownVotes>203 AND u.DownVotes<1660 AND v.CreationDate>'2009-06-09 13:56:58'::timestamp AND v.CreationDate<'2012-02-05 07:18:21'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<15 AND b.Date>'2012-01-29 09:27:10'::timestamp AND b.Date<'2013-12-18 11:03:29'::timestamp;

