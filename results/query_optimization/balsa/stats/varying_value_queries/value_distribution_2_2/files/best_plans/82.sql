/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 IndexScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>52 AND p.Score<63 AND p.CommentCount>0 AND p.CommentCount<4 AND u.DownVotes>326 AND u.DownVotes<1063 AND v.CreationDate>'2010-11-18 10:26:23'::timestamp AND v.CreationDate<'2012-07-27 12:10:31'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<5 AND b.Date>'2012-08-25 00:37:38'::timestamp AND b.Date<'2014-06-06 05:29:39'::timestamp;

