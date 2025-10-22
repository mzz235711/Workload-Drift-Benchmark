/*+ HashJoin(v b u p)
 HashJoin(b u p)
 MergeJoin(u p)
 SeqScan(v)
 IndexScan(b)
 SeqScan(u)
 SeqScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-11 AND p.Score<129 AND p.CommentCount>1 AND p.CommentCount<26 AND u.DownVotes>761 AND u.DownVotes<1898 AND v.CreationDate>'2010-09-09 05:45:07'::timestamp AND v.CreationDate<'2013-04-28 07:33:06'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<7 AND b.Date>'2011-09-30 11:59:50'::timestamp AND b.Date<'2013-03-11 19:14:35'::timestamp;

