/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-18 AND p.Score<65 AND p.CommentCount>18 AND p.CommentCount<35 AND u.DownVotes>64 AND u.DownVotes<1534 AND v.CreationDate>'2013-07-25 07:27:50'::timestamp AND v.CreationDate<'2013-09-18 12:14:44'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<10 AND b.Date>'2011-09-09 05:24:10'::timestamp AND b.Date<'2014-07-08 06:59:40'::timestamp;

