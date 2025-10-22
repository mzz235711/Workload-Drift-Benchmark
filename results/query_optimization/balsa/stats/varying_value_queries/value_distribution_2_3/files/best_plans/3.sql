/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-6 AND p.Score<72 AND p.CommentCount>20 AND p.CommentCount<26 AND u.DownVotes>4 AND u.DownVotes<875 AND v.CreationDate>'2009-07-10 02:31:54'::timestamp AND v.CreationDate<'2013-11-15 15:35:45'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<8 AND b.Date>'2011-04-08 05:37:09'::timestamp AND b.Date<'2014-03-06 04:36:35'::timestamp;

