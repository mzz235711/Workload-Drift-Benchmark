/*+ MergeJoin(v b u p)
 HashJoin(b u p)
 NestLoop(u p)
 IndexScan(v)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>43 AND p.Score<150 AND p.CommentCount>8 AND p.CommentCount<32 AND u.DownVotes>456 AND u.DownVotes<1724 AND v.CreationDate>'2010-04-04 04:57:28'::timestamp AND v.CreationDate<'2013-08-20 00:39:10'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<4 AND b.Date>'2010-11-01 07:58:04'::timestamp AND b.Date<'2014-07-13 16:48:42'::timestamp;

