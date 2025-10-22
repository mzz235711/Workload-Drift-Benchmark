/*+ MergeJoin(b v u p)
 MergeJoin(v u p)
 NestLoop(u p)
 IndexScan(b)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-11 AND p.Score<141 AND p.CommentCount>4 AND p.CommentCount<25 AND u.DownVotes>260 AND u.DownVotes<1759 AND v.CreationDate>'2012-05-21 08:37:10'::timestamp AND v.CreationDate<'2013-09-06 02:40:34'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<14 AND b.Date>'2011-12-18 15:31:52'::timestamp AND b.Date<'2013-04-19 03:45:28'::timestamp;

