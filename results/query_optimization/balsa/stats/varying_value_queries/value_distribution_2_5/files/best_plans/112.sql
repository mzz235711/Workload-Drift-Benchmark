/*+ MergeJoin(b v p u)
 NestLoop(v p u)
 NestLoop(v p)
 IndexScan(b)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 Leading((b ((v p) u))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-15 AND p.Score<73 AND p.CommentCount>6 AND p.CommentCount<31 AND u.DownVotes>671 AND u.DownVotes<827 AND v.CreationDate>'2010-04-06 09:17:05'::timestamp AND v.CreationDate<'2014-08-02 06:31:22'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<14 AND b.Date>'2010-08-27 04:58:05'::timestamp AND b.Date<'2011-05-01 06:14:49'::timestamp;

