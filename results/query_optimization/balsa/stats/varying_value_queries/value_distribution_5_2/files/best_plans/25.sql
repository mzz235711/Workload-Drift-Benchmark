/*+ HashJoin(v b u p)
 HashJoin(b u p)
 NestLoop(u p)
 SeqScan(v)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>27 AND p.Score<189 AND p.CommentCount>1 AND p.CommentCount<43 AND u.DownVotes>402 AND u.DownVotes<1899 AND v.CreationDate>'2011-12-04 18:59:34'::timestamp AND v.CreationDate<'2013-04-15 03:49:29'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<9 AND b.Date>'2010-08-24 19:38:07'::timestamp AND b.Date<'2011-05-24 03:56:54'::timestamp;

