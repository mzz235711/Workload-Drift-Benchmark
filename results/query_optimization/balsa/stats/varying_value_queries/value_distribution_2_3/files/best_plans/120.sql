/*+ MergeJoin(v b u p)
 HashJoin(b u p)
 NestLoop(u p)
 IndexScan(v)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>69 AND p.Score<152 AND p.CommentCount>2 AND p.CommentCount<31 AND u.DownVotes>577 AND u.DownVotes<1851 AND v.CreationDate>'2009-06-08 22:53:54'::timestamp AND v.CreationDate<'2014-06-02 03:22:58'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<15 AND b.Date>'2011-05-04 21:36:30'::timestamp AND b.Date<'2013-11-04 05:58:17'::timestamp;

