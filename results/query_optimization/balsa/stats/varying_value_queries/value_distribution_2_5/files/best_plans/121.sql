/*+ HashJoin(b v u p)
 MergeJoin(v u p)
 NestLoop(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>19 AND p.Score<107 AND p.CommentCount>0 AND p.CommentCount<14 AND u.DownVotes>146 AND u.DownVotes<929 AND v.CreationDate>'2012-09-09 23:03:56'::timestamp AND v.CreationDate<'2013-11-15 08:57:58'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<3 AND b.Date>'2011-05-31 23:02:14'::timestamp AND b.Date<'2013-06-04 18:47:41'::timestamp;

