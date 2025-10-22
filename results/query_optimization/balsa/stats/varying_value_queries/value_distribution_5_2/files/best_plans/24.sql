/*+ HashJoin(v b u p)
 HashJoin(b u p)
 NestLoop(u p)
 SeqScan(v)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-3 AND p.Score<101 AND p.CommentCount>4 AND p.CommentCount<24 AND u.DownVotes>28 AND u.DownVotes<1660 AND v.CreationDate>'2009-11-21 13:10:27'::timestamp AND v.CreationDate<'2010-12-16 17:58:54'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<4 AND b.Date>'2012-02-15 04:10:12'::timestamp AND b.Date<'2012-07-04 06:50:41'::timestamp;

