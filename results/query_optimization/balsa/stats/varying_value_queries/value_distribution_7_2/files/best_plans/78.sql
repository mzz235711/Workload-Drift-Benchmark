/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>7 AND p.Score<135 AND p.CommentCount>0 AND p.CommentCount<10 AND u.DownVotes>169 AND u.DownVotes<1830 AND v.CreationDate>'2009-09-04 13:00:32'::timestamp AND v.CreationDate<'2011-12-15 17:00:54'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<8 AND b.Date>'2010-10-21 14:41:34'::timestamp AND b.Date<'2014-05-01 07:00:16'::timestamp;

