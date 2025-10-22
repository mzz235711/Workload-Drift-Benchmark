/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>55 AND p.Score<142 AND p.CommentCount>2 AND p.CommentCount<29 AND u.DownVotes>605 AND u.DownVotes<1597 AND v.CreationDate>'2011-10-26 08:10:49'::timestamp AND v.CreationDate<'2014-02-24 08:37:17'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<7 AND b.Date>'2012-07-16 14:44:09'::timestamp AND b.Date<'2012-09-28 09:20:03'::timestamp;

