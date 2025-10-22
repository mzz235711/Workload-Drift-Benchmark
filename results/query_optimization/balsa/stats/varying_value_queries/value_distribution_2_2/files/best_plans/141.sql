/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>0 AND p.Score<61 AND p.CommentCount>3 AND p.CommentCount<8 AND u.DownVotes>262 AND u.DownVotes<1544 AND v.CreationDate>'2009-12-12 06:24:16'::timestamp AND v.CreationDate<'2014-03-26 23:38:21'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<13 AND b.Date>'2011-07-09 09:34:38'::timestamp AND b.Date<'2011-12-01 11:50:19'::timestamp;

