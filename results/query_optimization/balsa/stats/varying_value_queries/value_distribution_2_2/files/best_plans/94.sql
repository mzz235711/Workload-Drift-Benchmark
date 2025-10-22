/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>7 AND p.Score<21 AND p.CommentCount>13 AND p.CommentCount<41 AND u.DownVotes>20 AND u.DownVotes<1570 AND v.CreationDate>'2011-04-14 04:50:03'::timestamp AND v.CreationDate<'2011-11-28 11:42:39'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<14 AND b.Date>'2013-05-07 23:15:08'::timestamp AND b.Date<'2013-12-24 15:51:19'::timestamp;

