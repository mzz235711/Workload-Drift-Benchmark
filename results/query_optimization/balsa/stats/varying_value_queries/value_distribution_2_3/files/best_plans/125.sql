/*+ MergeJoin(v b u p)
 HashJoin(b u p)
 NestLoop(u p)
 IndexScan(v)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>10 AND p.Score<164 AND p.CommentCount>24 AND p.CommentCount<39 AND u.DownVotes>259 AND u.DownVotes<1213 AND v.CreationDate>'2012-01-19 03:05:38'::timestamp AND v.CreationDate<'2013-04-13 10:13:31'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<9 AND b.Date>'2012-07-11 13:16:41'::timestamp AND b.Date<'2013-04-14 05:32:52'::timestamp;

