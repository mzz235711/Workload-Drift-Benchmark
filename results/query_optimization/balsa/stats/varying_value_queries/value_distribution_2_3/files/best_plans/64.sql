/*+ MergeJoin(b v u p)
 MergeJoin(v u p)
 NestLoop(u p)
 IndexScan(b)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-14 AND p.Score<114 AND p.CommentCount>4 AND p.CommentCount<15 AND u.DownVotes>303 AND u.DownVotes<1370 AND v.CreationDate>'2011-01-06 09:10:52'::timestamp AND v.CreationDate<'2011-09-27 08:24:10'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<14 AND b.Date>'2012-02-26 22:06:26'::timestamp AND b.Date<'2013-10-23 13:43:35'::timestamp;

