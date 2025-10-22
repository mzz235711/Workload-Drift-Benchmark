/*+ MergeJoin(b v u p)
 MergeJoin(v u p)
 NestLoop(u p)
 IndexScan(b)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-10 AND p.Score<82 AND p.CommentCount>4 AND p.CommentCount<32 AND u.DownVotes>359 AND u.DownVotes<1774 AND v.CreationDate>'2010-12-26 03:20:11'::timestamp AND v.CreationDate<'2013-11-09 23:16:25'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<14 AND b.Date>'2011-05-12 09:13:17'::timestamp AND b.Date<'2011-10-13 18:23:53'::timestamp;

