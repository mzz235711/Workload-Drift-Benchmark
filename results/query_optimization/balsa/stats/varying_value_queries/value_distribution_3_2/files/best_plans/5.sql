/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>15 AND p.Score<69 AND p.CommentCount>4 AND p.CommentCount<28 AND u.DownVotes>108 AND u.DownVotes<603 AND v.CreationDate>'2012-07-07 12:10:59'::timestamp AND v.CreationDate<'2012-10-31 05:23:53'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<6 AND b.Date>'2011-04-19 06:44:52'::timestamp AND b.Date<'2014-05-04 02:37:28'::timestamp;

