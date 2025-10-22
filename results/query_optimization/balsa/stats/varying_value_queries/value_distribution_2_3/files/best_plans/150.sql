/*+ MergeJoin(v b u p)
 HashJoin(b u p)
 NestLoop(u p)
 IndexScan(v)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-6 AND p.Score<63 AND p.CommentCount>25 AND p.CommentCount<43 AND u.DownVotes>235 AND u.DownVotes<1067 AND v.CreationDate>'2009-11-04 20:21:04'::timestamp AND v.CreationDate<'2014-01-14 07:57:47'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<5 AND b.Date>'2010-12-31 10:39:45'::timestamp AND b.Date<'2014-02-04 06:52:29'::timestamp;

