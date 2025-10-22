/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 IndexScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-7 AND p.Score<129 AND p.CommentCount>5 AND p.CommentCount<8 AND u.DownVotes>351 AND u.DownVotes<1285 AND v.CreationDate>'2010-02-11 15:19:57'::timestamp AND v.CreationDate<'2013-08-30 14:20:09'::timestamp AND v.VoteTypeId>9 AND v.VoteTypeId<13 AND b.Date>'2010-11-12 02:59:59'::timestamp AND b.Date<'2013-10-29 09:04:45'::timestamp;

