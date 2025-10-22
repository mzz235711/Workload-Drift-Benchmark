/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>10 AND p.Score<155 AND p.CommentCount>16 AND p.CommentCount<22 AND u.DownVotes>385 AND u.DownVotes<1270 AND v.CreationDate>'2012-08-31 17:05:34'::timestamp AND v.CreationDate<'2013-12-05 19:05:54'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<8 AND b.Date>'2010-11-29 20:53:54'::timestamp AND b.Date<'2013-03-01 23:15:29'::timestamp;

