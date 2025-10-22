/*+ MergeJoin(v b u p)
 HashJoin(b u p)
 NestLoop(u p)
 IndexScan(v)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>61 AND p.Score<147 AND p.CommentCount>6 AND p.CommentCount<29 AND u.DownVotes>552 AND u.DownVotes<1647 AND v.CreationDate>'2009-09-28 13:50:17'::timestamp AND v.CreationDate<'2013-02-21 06:54:43'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<9 AND b.Date>'2012-11-20 19:24:29'::timestamp AND b.Date<'2014-07-04 22:28:11'::timestamp;

