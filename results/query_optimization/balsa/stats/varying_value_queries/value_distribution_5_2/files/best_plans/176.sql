/*+ HashJoin(v p u b)
 NestLoop(u b)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading(((v p) (u b))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>0 AND p.Score<85 AND p.CommentCount>1 AND p.CommentCount<32 AND u.DownVotes>437 AND u.DownVotes<1848 AND v.CreationDate>'2011-03-03 18:31:47'::timestamp AND v.CreationDate<'2012-12-19 14:58:22'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<15 AND b.Date>'2011-10-15 23:15:10'::timestamp AND b.Date<'2013-10-30 18:03:20'::timestamp;

