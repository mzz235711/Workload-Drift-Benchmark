/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-6 AND p.Score<144 AND p.CommentCount>0 AND p.CommentCount<6 AND u.DownVotes>507 AND u.DownVotes<1812 AND v.CreationDate>'2011-01-21 15:22:08'::timestamp AND v.CreationDate<'2014-04-28 02:12:51'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<10 AND b.Date>'2012-12-03 17:13:35'::timestamp AND b.Date<'2013-07-28 09:00:15'::timestamp;

