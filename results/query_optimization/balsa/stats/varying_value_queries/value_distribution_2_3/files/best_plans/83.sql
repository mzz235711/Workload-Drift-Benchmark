/*+ MergeJoin(v b u p)
 HashJoin(b u p)
 NestLoop(u p)
 IndexScan(v)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-7 AND p.Score<41 AND p.CommentCount>19 AND p.CommentCount<42 AND u.DownVotes>590 AND u.DownVotes<1052 AND v.CreationDate>'2009-11-03 06:17:30'::timestamp AND v.CreationDate<'2012-08-28 02:15:07'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<13 AND b.Date>'2011-02-26 17:25:25'::timestamp AND b.Date<'2014-01-09 04:37:19'::timestamp;

