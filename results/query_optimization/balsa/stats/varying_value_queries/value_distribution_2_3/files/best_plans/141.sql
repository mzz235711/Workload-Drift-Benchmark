/*+ MergeJoin(b v u p)
 MergeJoin(v u p)
 NestLoop(u p)
 IndexScan(b)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>0 AND p.Score<57 AND p.CommentCount>1 AND p.CommentCount<11 AND u.DownVotes>346 AND u.DownVotes<1821 AND v.CreationDate>'2010-06-14 23:23:03'::timestamp AND v.CreationDate<'2011-09-11 18:59:41'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<10 AND b.Date>'2011-03-10 14:23:47'::timestamp AND b.Date<'2012-09-25 13:45:53'::timestamp;

