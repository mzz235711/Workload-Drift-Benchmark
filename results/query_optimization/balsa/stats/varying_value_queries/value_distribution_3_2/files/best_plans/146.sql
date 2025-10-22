/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>0 AND p.Score<52 AND p.CommentCount>19 AND p.CommentCount<44 AND u.DownVotes>360 AND u.DownVotes<865 AND v.CreationDate>'2010-04-03 19:20:52'::timestamp AND v.CreationDate<'2013-10-05 18:12:13'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<14 AND b.Date>'2012-06-07 17:25:05'::timestamp AND b.Date<'2014-07-18 10:33:32'::timestamp;

