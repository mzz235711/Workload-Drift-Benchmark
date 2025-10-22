/*+ MergeJoin(b v u p)
 MergeJoin(v u p)
 NestLoop(u p)
 IndexScan(b)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>2 AND p.Score<53 AND p.CommentCount>0 AND p.CommentCount<35 AND u.DownVotes>688 AND u.DownVotes<1790 AND v.CreationDate>'2010-09-22 23:29:39'::timestamp AND v.CreationDate<'2014-06-11 09:38:08'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<12 AND b.Date>'2011-05-07 02:24:53'::timestamp AND b.Date<'2012-10-31 14:39:15'::timestamp;

