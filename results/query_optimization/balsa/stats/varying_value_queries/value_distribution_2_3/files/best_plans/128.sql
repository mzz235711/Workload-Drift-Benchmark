/*+ MergeJoin(v b u p)
 HashJoin(b u p)
 NestLoop(u p)
 IndexScan(v)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-7 AND p.Score<92 AND p.CommentCount>19 AND p.CommentCount<38 AND u.DownVotes>644 AND u.DownVotes<1445 AND v.CreationDate>'2009-10-12 07:25:36'::timestamp AND v.CreationDate<'2012-06-18 05:34:28'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<13 AND b.Date>'2010-10-25 02:11:01'::timestamp AND b.Date<'2012-05-12 15:36:45'::timestamp;

