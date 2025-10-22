/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>18 AND p.Score<50 AND p.CommentCount>4 AND p.CommentCount<24 AND u.DownVotes>167 AND u.DownVotes<880 AND v.CreationDate>'2011-11-15 04:24:49'::timestamp AND v.CreationDate<'2012-11-17 12:27:05'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<13 AND b.Date>'2012-05-18 02:58:27'::timestamp AND b.Date<'2014-01-16 11:33:20'::timestamp;

