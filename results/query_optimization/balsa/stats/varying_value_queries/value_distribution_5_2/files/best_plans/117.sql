/*+ HashJoin(v b u p)
 HashJoin(b u p)
 NestLoop(u p)
 SeqScan(v)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>5 AND p.Score<139 AND p.CommentCount>0 AND p.CommentCount<3 AND u.DownVotes>681 AND u.DownVotes<1792 AND v.CreationDate>'2009-11-30 14:13:34'::timestamp AND v.CreationDate<'2012-10-15 14:32:35'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<12 AND b.Date>'2011-08-31 20:21:19'::timestamp AND b.Date<'2012-12-25 01:51:03'::timestamp;

